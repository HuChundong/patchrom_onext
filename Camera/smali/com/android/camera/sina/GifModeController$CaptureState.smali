.class final enum Lcom/android/camera/sina/GifModeController$CaptureState;
.super Ljava/lang/Enum;
.source "GifModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sina/GifModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/sina/GifModeController$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/sina/GifModeController$CaptureState;

.field public static final enum Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

.field public static final enum Ready:Lcom/android/camera/sina/GifModeController$CaptureState;

.field public static final enum Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

.field public static final enum Unavailable:Lcom/android/camera/sina/GifModeController$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/sina/GifModeController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 78
    new-instance v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/sina/GifModeController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Ready:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 79
    new-instance v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    const-string v1, "Capturing"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/sina/GifModeController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 80
    new-instance v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/sina/GifModeController$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/sina/GifModeController$CaptureState;

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/android/camera/sina/GifModeController$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Ready:Lcom/android/camera/sina/GifModeController$CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/android/camera/sina/GifModeController$CaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/android/camera/sina/GifModeController$CaptureState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->$VALUES:[Lcom/android/camera/sina/GifModeController$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/sina/GifModeController$CaptureState;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifModeController$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/sina/GifModeController$CaptureState;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/sina/GifModeController$CaptureState;->$VALUES:[Lcom/android/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v0}, [Lcom/android/camera/sina/GifModeController$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/sina/GifModeController$CaptureState;

    return-object v0
.end method
