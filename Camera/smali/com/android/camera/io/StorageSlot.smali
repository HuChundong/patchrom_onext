.class public abstract Lcom/android/camera/io/StorageSlot;
.super Ljava/lang/Object;
.source "StorageSlot.java"


# static fields
.field public static final INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

.field public static final INVALID:Lcom/android/camera/io/StorageSlot;

.field public static final PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

.field public static final STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

.field public static final TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final directoryPath:Ljava/lang/String;

.field public final imageContentUri:Landroid/net/Uri;

.field public final videoContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/io/InvalidStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/InvalidStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    .line 16
    new-instance v0, Lcom/android/camera/io/StorageCardSlot;

    invoke-direct {v0}, Lcom/android/camera/io/StorageCardSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    .line 17
    new-instance v0, Lcom/android/camera/io/PhoneStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/PhoneStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 18
    new-instance v0, Lcom/android/camera/io/TabletStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/TabletStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 19
    new-instance v0, Lcom/android/camera/io/InternalSmallStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/InternalSmallStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "imageContentUri"
    .parameter "videoContentUri"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    .line 36
    iput-object p3, p0, Lcom/android/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    .line 37
    return-void
.end method

.method public static getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 50
    :goto_0
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternalMemorySlot()Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUniqueStorageSlot()Z
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 6

    .prologue
    .line 60
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 65
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, ex:Ljava/lang/Throwable;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public isInternalMemory()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupported()Z
.end method

.method public isWritable(Ljava/lang/String;)Z
    .locals 7
    .parameter "relativePath"

    .prologue
    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 122
    .local v1, fullPath:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWritable() - Cannot create directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    return v3

    .line 116
    .end local v1           #fullPath:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #fullPath:Ljava/lang/String;
    goto :goto_0

    .line 128
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v4, ".probe"

    invoke-static {v1, v4}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 131
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iget-object v4, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWritable() - Cannot create temp file in directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    .end local v2           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWritable() - Fail to check access right of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 136
    .end local v0           #ex:Ljava/lang/Throwable;
    .restart local v2       #tempFile:Ljava/io/File;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    const/4 v3, 0x1

    goto :goto_1
.end method