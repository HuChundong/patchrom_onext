.class Lcom/android/camera/CameraThread$13;
.super Lcom/android/camera/event/Event;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/event/Event",
        "<",
        "Lcom/android/camera/imaging/RawImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/android/camera/CameraThread$13;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/camera/event/EventHandler;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2527
    .local p1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<-Lcom/android/camera/imaging/RawImageEventArgs;>;"
    invoke-virtual {p0}, Lcom/android/camera/CameraThread$13;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    invoke-super {p0, p1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2537
    :goto_0
    return-void

    .line 2532
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2535
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "New event handler for \'"

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    const-string v3, "\', setup preview call-back"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2536
    iget-object v0, p0, Lcom/android/camera/CameraThread$13;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->setupPreviewCallback()V
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)V

    goto :goto_0
.end method

.method public removeHandler(Lcom/android/camera/event/EventHandler;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2543
    .local p1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<-Lcom/android/camera/imaging/RawImageEventArgs;>;"
    invoke-super {p0, p1}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2544
    const/4 v0, 0x0

    .line 2552
    :goto_0
    return v0

    .line 2547
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread$13;->hasHandlers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2549
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No more event handlers for \'"

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    const-string v3, "\', clear preview call-back"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2550
    iget-object v0, p0, Lcom/android/camera/CameraThread$13;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->clearPreviewCallback()V
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;)V

    .line 2552
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
