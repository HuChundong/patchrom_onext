.class public final enum Lcom/android/camera/sina/GifGenerator$GifGenerator_State;
.super Ljava/lang/Enum;
.source "GifGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sina/GifGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GifGenerator_State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/sina/GifGenerator$GifGenerator_State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

.field public static final enum GifGenerating:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

.field public static final enum Photoing:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

.field public static final enum Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    const-string v1, "Undo"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    new-instance v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    const-string v1, "Photoing"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Photoing:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    new-instance v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    const-string v1, "GifGenerating"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->GifGenerating:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    sget-object v1, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->Photoing:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->GifGenerating:Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->$VALUES:[Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/sina/GifGenerator$GifGenerator_State;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/sina/GifGenerator$GifGenerator_State;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->$VALUES:[Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {v0}, [Lcom/android/camera/sina/GifGenerator$GifGenerator_State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/sina/GifGenerator$GifGenerator_State;

    return-object v0
.end method
