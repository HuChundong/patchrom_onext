.class final Lcom/android/camera/component/ImageSettingsController;
.super Lcom/android/camera/IImageSettingsController;
.source "ImageSettingsController.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Image Settings Controller"

.field private static final PARAMETER_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final PARAMETER_ISO:Ljava/lang/String; = "iso"

.field private static final PARAMETER_SATURATION:Ljava/lang/String; = "saturation"

.field private static final PARAMETER_SHARPNESS:Ljava/lang/String; = "sharpness"


# instance fields
.field private final m_AecLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AwbLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_BrightnessRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContrastRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultBrightness:I

.field private m_DefaultContrast:I

.field private m_DefaultSaturation:I

.field private m_DefaultSharpness:I

.field private m_NeedToReset:Z

.field private m_NeedToSetParams:Z

.field private m_SaturationRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SharpnessRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 6
    .parameter "cameraThread"

    .prologue
    const/4 v5, 0x0

    .line 61
    const-string v1, "Image Settings Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IImageSettingsController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    .line 64
    invoke-direct {p0, v5}, Lcom/android/camera/component/ImageSettingsController;->loadFromPreferences(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ImageSettingsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/ImageSettingsController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ImageSettingsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ImageSettingsController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->loadFromPreferences(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ImageSettingsController;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/android/camera/Handle;)V

    return-void
.end method

.method private applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V
    .locals 2
    .parameter "key"
    .parameter "normValue"
    .parameter
    .parameter "defaultValue"
    .parameter "apply"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/android/camera/Range;I)I

    move-result v0

    .line 76
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;ILcom/android/camera/CameraController;Z)V

    .line 77
    return-void
.end method

.method private applyImageSetting(Ljava/lang/String;ILcom/android/camera/CameraController;Z)V
    .locals 5
    .parameter "key"
    .parameter "value"
    .parameter "controller"
    .parameter "apply"

    .prologue
    .line 82
    if-eqz p3, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "applyImageSetting() - Set "

    const-string v3, " = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p3, p1, p2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 86
    if-eqz p4, :cond_0

    .line 87
    invoke-virtual {p3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyImageSetting() - Cannot apply image setting for parameter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyImageSettings(Z)V
    .locals 2
    .parameter "apply"

    .prologue
    .line 186
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 187
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 188
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 189
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 191
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 192
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    .line 197
    return-void
.end method

.method private ensureNormalizedValue(F)F
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    .line 286
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 290
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 288
    .restart local p1
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 289
    goto :goto_0
.end method

.method private getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I
    .locals 4
    .parameter "controller"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraController;",
            "Ljava/lang/String;",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageSettingDefaultValue() - Cannot default value from parameter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p3, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p3, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;
    .locals 4
    .parameter "controller"
    .parameter "keyMin"
    .parameter "keyMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraController;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 349
    :try_start_0
    new-instance v1, Lcom/android/camera/Range;

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-object v1

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageSettingRange() - Cannot get range from parameters (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/android/camera/Range;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getImageSettingRanges()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 299
    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    if-eqz v2, :cond_0

    .line 342
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 308
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_1

    .line 312
    :try_start_0
    new-instance v2, Lcom/android/camera/Range;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMinExposureCompensation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxExposureCompensation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    if-nez v2, :cond_2

    .line 323
    new-instance v2, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    .line 324
    :cond_2
    iget v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget-object v2, v2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget-object v2, v2, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Brightness : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    const-string v2, "contrast-min"

    const-string v3, "contrast-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    .line 330
    const-string v2, "contrast-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    .line 331
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Contrast : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    const-string v2, "saturation-min"

    const-string v3, "saturation-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    .line 335
    const-string v2, "saturation-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    .line 336
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Saturation : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    const-string v2, "sharpness-min"

    const-string v3, "sharpness-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    .line 340
    const-string v2, "sharpness-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    .line 341
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Sharpness : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 319
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Cannot get brightness range"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private isImageSettingsWithoutChanges(Lcom/android/camera/ImageSettings;)Z
    .locals 6
    .parameter "imageSettings"

    .prologue
    const/4 v2, 0x1

    const v5, 0x38d1b717

    const/4 v3, 0x0

    .line 204
    if-nez p1, :cond_0

    move v1, v2

    .line 265
    :goto_0
    return v1

    .line 208
    :cond_0
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    move v1, v3

    .line 211
    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    move v1, v3

    .line 218
    goto :goto_0

    .line 222
    :cond_2
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    .line 225
    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 231
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    move v1, v3

    .line 232
    goto :goto_0

    .line 236
    :cond_4
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 238
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    move v1, v3

    .line 239
    goto/16 :goto_0

    .line 243
    :cond_5
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_6
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    .line 251
    goto/16 :goto_0

    .line 255
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 256
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_9

    .line 258
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getAutoExposureLock()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_8
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getAutoWhiteBalanceLock()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 262
    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 265
    goto/16 :goto_0
.end method

.method private loadFromPreferences(Z)V
    .locals 4
    .parameter "apply"

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreferences()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 492
    .local v0, settings:Lcom/android/camera/CameraSettings;
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 494
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 496
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->mainWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 503
    :goto_0
    if-eqz p1, :cond_0

    .line 504
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Z)V

    .line 505
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->frontWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private lockAutoExposure(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    .line 543
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 561
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 564
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private lockAutoWhiteBalance(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    .line 605
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 623
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 626
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private mapToActualImageSettingValue(FLcom/android/camera/Range;I)I
    .locals 4
    .parameter "normValue"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    const/high16 v3, 0x3f00

    .line 637
    if-nez p2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "mapToActualImageSettingValue() - No value range, use default value"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local p3
    :goto_0
    return p3

    .line 642
    .restart local p3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result p1

    .line 645
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 646
    iget-object v0, p2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    add-float/2addr v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int p3, v1, v0

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p2, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr p3, v0

    goto :goto_0
.end method

.method private setBrightness(FZ)V
    .locals 8
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 655
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, ")"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v3

    .line 661
    .local v3, normValue:F
    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    .line 662
    iget-object v4, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 665
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget v5, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/android/camera/Range;I)I

    move-result v2

    .line 670
    .local v2, exposureValue:I
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    .line 671
    if-eqz p2, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v0           #controller:Lcom/android/camera/CameraController;
    .end local v2           #exposureValue:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 685
    return-void

    .line 674
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    .restart local v2       #exposureValue:I
    :catch_0
    move-exception v1

    .line 676
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness() - Cannot set brightness"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 681
    .end local v0           #controller:Lcom/android/camera/CameraController;
    .end local v1           #ex:Ljava/lang/Throwable;
    .end local v2           #exposureValue:I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness() - AEC is locked"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setContrast(FZ)V
    .locals 6
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setContrast("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    .line 698
    .local v2, normValue:F
    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    .line 699
    const-string v1, "contrast"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    .line 702
    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 703
    return-void
.end method

.method private setIso(Ljava/lang/String;Z)V
    .locals 6
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 710
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setIsoInternal("

    const-string v5, ")"

    invoke-static {v3, v4, p1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    if-eqz p1, :cond_1

    move-object v2, p1

    .line 716
    .local v2, iso:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 717
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 721
    :try_start_0
    const-string v3, "iso"

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    if-eqz p2, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    return-void

    .line 713
    .end local v0           #controller:Lcom/android/camera/CameraController;
    .end local v2           #iso:Ljava/lang/String;
    :cond_1
    const-string v2, "auto"

    goto :goto_0

    .line 725
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    .restart local v2       #iso:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 727
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setIsoInternal() - Cannot set brightness"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setSaturation(FZ)V
    .locals 6
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setSaturation("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    .line 746
    .local v2, normValue:F
    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    .line 747
    const-string v1, "saturation"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method private setSharpness(FZ)V
    .locals 6
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setSharpness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 761
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    .line 764
    .local v2, normValue:F
    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    .line 765
    const-string v1, "sharpness"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    .line 768
    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method private setWhiteBalance(Ljava/lang/String;Z)V
    .locals 6
    .parameter "value"
    .parameter "apply"

    .prologue
    .line 776
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal("

    const-string v5, ")"

    invoke-static {v3, v4, p1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    if-eqz p1, :cond_1

    move-object v2, p1

    .line 782
    .local v2, whiteBalance:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 785
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 789
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 790
    if-eqz p2, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 804
    return-void

    .line 779
    .end local v2           #whiteBalance:Ljava/lang/String;
    :cond_1
    const-string v2, "auto"

    goto :goto_0

    .line 793
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    .restart local v2       #whiteBalance:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 795
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal() - Cannot set brightness"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 800
    .end local v0           #controller:Lcom/android/camera/CameraController;
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal() - AWB is locked"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unlockAutoExposure(Z)V
    .locals 5
    .parameter "apply"

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 867
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 870
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    .line 873
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 874
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 877
    if-eqz p1, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 881
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_0
    return-void
.end method

.method private unlockAutoWhiteBalance(Z)V
    .locals 5
    .parameter "apply"

    .prologue
    const/4 v4, 0x0

    .line 940
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 944
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 947
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    .line 950
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 951
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 954
    if-eqz p1, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 958
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyImageSettings(Lcom/android/camera/ImageSettings;Z)V
    .locals 5
    .parameter "imageSettings"
    .parameter "applyImmediately"

    .prologue
    const/4 v4, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - No image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - Called from another thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/ImageSettings;)V

    .line 114
    .local v0, clone:Lcom/android/camera/ImageSettings;
    new-instance v3, Lcom/android/camera/component/ImageSettingsController$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/camera/component/ImageSettingsController$1;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/ImageSettings;Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    .end local v0           #clone:Lcom/android/camera/ImageSettings;
    :cond_2
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    .line 138
    :cond_3
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 139
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setContrast(FZ)V

    .line 142
    :cond_4
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 143
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    .line 146
    :cond_5
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 147
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setSaturation(FZ)V

    .line 150
    :cond_6
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v3, :cond_7

    .line 151
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setSharpness(FZ)V

    .line 154
    :cond_7
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    .line 160
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 161
    .local v1, controller:Lcom/android/camera/CameraController;
    if-eqz v1, :cond_9

    .line 163
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 164
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 168
    :cond_9
    if-eqz p2, :cond_0

    .line 170
    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 178
    .local v2, ex:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - Cannot apply image settings"

    invoke-static {v3, v4, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 156
    .end local v1           #controller:Lcom/android/camera/CameraController;
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_a
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 157
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 275
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 278
    invoke-super {p0}, Lcom/android/camera/IImageSettingsController;->deinitializeOverride()V

    .line 279
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/camera/IImageSettingsController;->initializeOverride()V

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 388
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$2;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 398
    iget-object v1, v0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$3;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$4;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 451
    invoke-static {}, Lcom/android/camera/FeatureConfig;->useSeparateWhiteBalanceSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$5;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 468
    :cond_0
    iget-object v1, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$6;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 481
    return-void
.end method

.method public lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3
    .parameter "name"

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 516
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    .line 521
    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v1, Lcom/android/camera/component/ImageSettingsController$7;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ImageSettingsController$7;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/android/camera/Handle;)V

    goto :goto_0
.end method

.method public lockAutoWhiteBalance(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3
    .parameter "name"

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 578
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    .line 583
    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v1, Lcom/android/camera/component/ImageSettingsController$8;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ImageSettingsController$8;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 600
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    goto :goto_0
.end method

.method public unlockAutoExposure(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    const/4 v4, 0x0

    .line 813
    if-nez p1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 824
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v1, Lcom/android/camera/component/ImageSettingsController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/ImageSettingsController$9;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 839
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 846
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 856
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_5

    .line 857
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 858
    :cond_5
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    goto :goto_0
.end method

.method public unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    const/4 v4, 0x0

    .line 890
    if-nez p1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance v1, Lcom/android/camera/component/ImageSettingsController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/ImageSettingsController$10;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 923
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 929
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 932
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 933
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_5

    .line 934
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 935
    :cond_5
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto :goto_0
.end method
