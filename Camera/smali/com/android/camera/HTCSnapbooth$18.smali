.class Lcom/android/camera/HTCSnapbooth$18;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;

.field final synthetic val$freezeUIOrientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    iput p2, p0, Lcom/android/camera/HTCSnapbooth$18;->val$freezeUIOrientation:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v1, p0, Lcom/android/camera/HTCSnapbooth$18;->val$freezeUIOrientation:I

    #calls: Lcom/android/camera/HTCSnapbooth;->confirmDeletingCurrentImageFile(I)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$4500(Lcom/android/camera/HTCSnapbooth;I)V

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4600(Lcom/android/camera/HTCSnapbooth;)V

    goto :goto_0
.end method