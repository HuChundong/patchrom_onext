.class Lcom/android/camera/component/PhoneCallUI$5;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PhoneCallUI;->phoneCallPopUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI$5;->this$0:Lcom/android/camera/component/PhoneCallUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$5;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$100(Lcom/android/camera/component/PhoneCallUI;)V

    .line 447
    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI$5;->this$0:Lcom/android/camera/component/PhoneCallUI;

    #calls: Lcom/android/camera/component/PhoneCallUI;->endCall()V
    invoke-static {v0}, Lcom/android/camera/component/PhoneCallUI;->access$1800(Lcom/android/camera/component/PhoneCallUI;)V

    .line 448
    return-void
.end method
