.class Lcom/android/camera/component/PanoramaController$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 4
    .parameter "timerHandle"
    .parameter "name"
    .parameter "startTime"
    .parameter "timeout"
    .parameter "userState"

    .prologue
    .line 124
    check-cast p7, Ljava/lang/Integer;

    .end local p7
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEG call-back for frame ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] timeout, cancel capturing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-lez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsReOpenCameraNeeded:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/PanoramaController;->access$202(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 129
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->onCancelCapture()V
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto :goto_0
.end method
