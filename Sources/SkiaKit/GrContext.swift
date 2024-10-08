#if canImport(CSkiaSharp)
import CSkiaSharp
#endif

public final class GrContext {
  public let handle: OpaquePointer

  private init(handle: OpaquePointer) {
    self.handle = handle
  }

  /// create a GrContext for the currently active OpenGL context
  public static func makeGL(interface: GLInterface) -> GrContext {
    GrContext(handle: gr_direct_context_make_gl(interface.handle))
  }
}
