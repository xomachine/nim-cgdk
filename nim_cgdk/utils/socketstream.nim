from streams import Stream, StreamObj
from net import Socket
from net import close, recv, send, getFd


type
  OperationNotSupported* = object of Exception
  SocketStreamObj = object of Stream
    socket*: Socket
  SocketStream* = ref SocketStreamObj

proc newSocketStream* (s: Socket): SocketStream =
  new(result)
  result.socket = s
  result.closeImpl = proc(ss: Stream) =
    let ss = SocketStream(ss)
    ss.socket.close()
  result.atEndImpl = proc(ss: Stream): bool =
    raise newException(OperationNotSupported, "Checking end of data " &
                                              " is not supported for sockets")
  proc readImpl(ss: Stream, buffer: pointer,
                bufLen: int): int =
    let ss = SocketStream(ss)
    ss.socket.recv(buffer, bufLen)
  # A little dirty hack to avoid compiler complanings
  # to GCUnsafe suspend proc
  result.readDataImpl =
    cast[type(result.readDataImpl)](readImpl)
  result.writeDataImpl = proc(ss: Stream, buffer: pointer,
                              bufLen: int) =
    let ss = SocketStream(ss)
    assert(ss.socket.send(buffer, bufLen) == bufLen)
    
  result.peekDataImpl = proc(ss: Stream, buffer: pointer,
                             bufLen: int): int =
    raise newException(OperationNotSupported, "Peeking data" &
                       " is not supported for sockets")
  result.getPositionImpl = proc(ss: Stream): int =
    raise newException(OperationNotSupported, "Positioning" &
                       " is not supported for sockets")
  result.setPositionImpl = proc(ss: Stream, p: int) =
    raise newException(OperationNotSupported, "Positioning" &
                       " is not supported for sockets")

