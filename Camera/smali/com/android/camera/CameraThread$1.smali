.class Lcom/android/camera/CameraThread$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 1
    .parameter "timerHandle"
    .parameter "name"
    .parameter "startTime"
    .parameter "timeout"
    .parameter "userState"

    .prologue
    .line 280
    check-cast p7, Lcom/android/camera/HTCCamera;

    .end local p7
    sget-object v0, Lcom/android/camera/CameraThreadBlockReason;->BlockedInCameraDriver:Lcom/android/camera/CameraThreadBlockReason;

    invoke-virtual {p7, v0}, Lcom/android/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    .line 281
    return-void
.end method
