from streams import Stream, StreamObj
from net import Socket
from net import close, recv, send, getFd
from nativesockets import select


type
  OperationNotSupported* = object of Exception
  SocketStreamObj = object of Stream
    socket*: Socket
  SocketStream* = ref SocketStreamObj

proc `[]`(p: pointer, shift: int): pointer {.inline.} =
  cast[pointer](cast[Natural](p) + shift)

proc newSocketStream* (s: Socket): SocketStream =
  new(result)
  result.socket = s
  result.closeImpl = proc(ss: Stream) =
    let ss = SocketStream(ss)
    ss.socket.close()
  result.atEndImpl = proc(ss: Stream): bool =
    let ss = SocketStream(ss)
    var fds = @[ss.socket.getFd()]
    fds.select(0) == 0
  proc readImpl(ss: Stream, buffer: pointer,
                bufLen: int): int =
    let ss = SocketStream(ss)
    var read = 0
    while read < bufLen:
      read += ss.socket.recv(buffer[read], bufLen - read)
    read
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

