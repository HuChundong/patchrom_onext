.class Lcom/android/camera/io/PhoneStorageSlot;
.super Lcom/android/camera/io/StorageSlot;
.source "PhoneStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/android/camera/io/PhoneStorageSlot;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 18
    return-void
.end method

.method private static getDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/camera/io/PhoneStorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "removed"

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Phone Storage"

    return-object v0
.end method
