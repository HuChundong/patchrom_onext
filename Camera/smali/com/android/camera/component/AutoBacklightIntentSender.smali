.class public Lcom/android/camera/component/AutoBacklightIntentSender;
.super Lcom/android/camera/component/UIComponent;
.source "AutoBacklightIntentSender.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BASIC_BRIGHTNESS_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOW_BATTERY_BRIGHTNESS_VALUE:I = 0x0

.field public static final LOW_BATTERY_THRESHOLD:I = 0x14

.field public static final NAME:Ljava/lang/String; = "AutoBacklight Intent Sender"

.field public static final PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String; = null

.field public static final RESEND_MSG_TIME:I = 0x7530

.field public static final SEND_ENABLE_AUTOBACKLIGHT:I = 0x2711


# instance fields
.field private m_BrightnessValue:I

.field private final m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

.field private final m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "/sys/class/backlight/tegra-pwm-bl/backlight_info"

    sput-object v0, Lcom/android/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    .line 47
    :goto_0
    const/16 v0, 0xe9

    sput v0, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    .line 48
    const/16 v0, 0xd3

    sput v0, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    .line 50
    return-void

    .line 45
    :cond_0
    const-string v0, "/sys/class/leds/lcd-backlight/backlight_info"

    sput-object v0, Lcom/android/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 145
    const-string v0, "AutoBacklightIntentSender"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 55
    iput v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    .line 60
    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$1;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$2;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V

    return-void
.end method

.method private disableAutoBacklight()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    .line 318
    .local v0, worker:Lcom/android/camera/ISharedBackgroundWorker;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 320
    :cond_1
    return-void
.end method

.method private enableAutoBacklight()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    .line 308
    .local v0, worker:Lcom/android/camera/ISharedBackgroundWorker;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 310
    :cond_1
    return-void
.end method

.method private getMinimumBacklightValue(Ljava/lang/String;)I
    .locals 14
    .parameter "filePath"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, file:Ljava/io/File;
    const/4 v9, 0x0

    .line 239
    .local v9, value:I
    const/4 v5, 0x0

    .line 243
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 244
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 245
    :cond_0
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "Error when read backlight value file."

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 279
    if-eqz v5, :cond_1

    .line 280
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move v10, v9

    .line 287
    .end local v9           #value:I
    .local v10, value:I
    :goto_1
    return v10

    .line 281
    .end local v2           #file:Ljava/io/File;
    .end local v10           #value:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v9       #value:I
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "fail to close reader"

    invoke-static {v11, v12, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v12, 0x1

    invoke-direct {v6, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 250
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 255
    const-string v11, "BL_CAM_MIN"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 257
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, index:I
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, strValue:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 260
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The backlight value from file is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-ltz v9, :cond_4

    const/16 v11, 0xff

    if-le v9, v11, :cond_5

    .line 265
    :cond_4
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "The backlight value from file is invalid"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    .line 266
    const/4 v9, 0x0

    .line 279
    :cond_5
    if-eqz v6, :cond_6

    .line 280
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_2
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move v10, v9

    .line 283
    .end local v9           #value:I
    .restart local v10       #value:I
    goto :goto_1

    .line 281
    .end local v2           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v10           #value:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v9       #value:I
    :catch_1
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "fail to close reader"

    invoke-static {v11, v12, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 279
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v4           #index:I
    .end local v8           #strValue:Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_8

    .line 280
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .end local v7           #str:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :cond_9
    :goto_3
    move v10, v9

    .line 287
    .end local v9           #value:I
    .restart local v10       #value:I
    goto :goto_1

    .line 281
    .end local v2           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v10           #value:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #str:Ljava/lang/String;
    .restart local v9       #value:I
    :catch_2
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "fail to close reader"

    invoke-static {v11, v12, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 284
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .line 274
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v7           #str:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 275
    .local v1, ex:Ljava/lang/Throwable;
    :goto_4
    :try_start_7
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "fail to get backlight value"

    invoke-static {v11, v12, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 279
    if-eqz v5, :cond_9

    .line 280
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 281
    :catch_4
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v12, "fail to close reader"

    invoke-static {v11, v12, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 278
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 279
    :goto_5
    if-eqz v5, :cond_a

    .line 280
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 283
    :cond_a
    :goto_6
    throw v11

    .line 281
    :catch_5
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v13, "fail to close reader"

    invoke-static {v12, v13, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 278
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .end local v2           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .line 274
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .end local v2           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 188
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$3;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 199
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$4;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 209
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$5;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 220
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AutoBacklightIntentSender$6;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 155
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 172
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 181
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->registerListeners()V

    .line 182
    return-void
.end method
