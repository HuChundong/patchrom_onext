.class public final enum Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
.super Ljava/lang/Enum;
.source "FeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriverCallbackTimeoutHandlingPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

.field public static final enum Ignore:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

.field public static final enum RecoverSilently:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

.field public static final enum ThrowException:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    const-string v1, "Ignore"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->Ignore:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    .line 13
    new-instance v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    const-string v1, "RecoverSilently"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->RecoverSilently:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    .line 14
    new-instance v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    const-string v1, "ThrowException"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ThrowException:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->Ignore:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->RecoverSilently:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ThrowException:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->$VALUES:[Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->$VALUES:[Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v0}, [Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    return-object v0
.end method