.class Lcom/android/camera/component/AutoFocusController$4;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;

.field final synthetic val$handle:Lcom/android/camera/Handle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$4;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$4;->val$handle:Lcom/android/camera/Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$4;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$4;->val$handle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V

    .line 475
    return-void
.end method
