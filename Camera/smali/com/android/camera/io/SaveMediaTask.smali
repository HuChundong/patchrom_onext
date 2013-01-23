.class public abstract Lcom/android/camera/io/SaveMediaTask;
.super Ljava/lang/Object;
.source "SaveMediaTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final cameraThread:Lcom/android/camera/CameraThread;

.field public volatile captureHandle:Lcom/android/camera/CaptureHandle;

.field public volatile dcfInfo:Lcom/android/camera/io/DCFInfo;

.field public volatile fileFormat:Lcom/android/camera/io/FileFormat;

.field public volatile gpsLocation:Landroid/location/Location;

.field public volatile isLastMedia:Z

.field public volatile isTempMedia:Z

.field private final m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

.field public volatile postCounter:I

.field public volatile storageSlot:Lcom/android/camera/io/StorageSlot;

.field public volatile takenDateTime:J


# direct methods
.method protected constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/io/SaveMediaTask;->isLastMedia:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/io/SaveMediaTask;->isTempMedia:Z

    .line 30
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    .line 39
    return-void
.end method

.method private updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4
    .parameter "cameraActivity"
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 208
    if-eqz p2, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getSavedMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    return-object v0
.end method

.method protected getTempFileName()Lcom/android/camera/io/DCFPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertIntoMediaStore()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v4}, Lcom/android/camera/io/SaveMediaTask;->onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, contentUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - No content URI"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v5}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    :goto_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 80
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V

    .line 83
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - End"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0           #contentUri:Landroid/net/Uri;
    :goto_1
    return v2

    .line 76
    .restart local v0       #contentUri:Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - Content URI : "

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0           #contentUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - Exception occurred while inserting data into media store"

    invoke-static {v2, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V

    move v2, v3

    .line 90
    goto :goto_1
.end method

.method protected abstract onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
.end method

.method protected onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "filePath"
    .parameter "ex"

    .prologue
    .line 109
    return-void
.end method

.method protected onMediaSaved(Lcom/android/camera/io/Path;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 103
    return-void
.end method

.method protected onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "mediaInfo"

    .prologue
    .line 115
    return-void
.end method

.method protected abstract onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
.end method

.method public saveMedia()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 135
    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v9, "saveMedia() - Start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 140
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v0, :cond_0

    .line 142
    iget-object v6, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v7, "saveMedia() - No camera activity"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    .line 197
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :goto_0
    return v5

    .line 146
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_0
    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    iget-object v8, v8, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v9, :cond_1

    .line 148
    iget-object v6, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v7, "saveMedia() - Storage not ready"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :catch_0
    move-exception v2

    .line 195
    .local v2, ex:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v7, "saveMedia() - Exception occurred while saving media"

    invoke-static {v6, v7, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v6, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v6, v6, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v6, v2}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Lcom/android/camera/io/SaveMediaTask;->isTempMedia:Z

    if-eqz v8, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/io/SaveMediaTask;->getTempFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v4

    .line 160
    .local v4, path:Lcom/android/camera/io/DCFPath;
    :goto_1
    if-nez v4, :cond_3

    .line 162
    iget-object v6, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v7, "saveMedia() - Cannot get available file path"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    .end local v4           #path:Lcom/android/camera/io/DCFPath;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/io/SaveMediaTask;->getAvailableFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v4

    .restart local v4       #path:Lcom/android/camera/io/DCFPath;
    goto :goto_1

    .line 166
    :cond_3
    iget-object v3, v4, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    .line 167
    .local v3, fileName:Ljava/lang/String;
    iget-object v1, v4, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 168
    .local v1, directoryName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v4, v8, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 169
    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    if-eqz v9, :cond_4

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v7, v7, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :cond_4
    iput-object v7, v8, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 170
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveMedia() - Directory name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", file name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - onSaveMediaToFile() - Start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/camera/io/SaveMediaTask;->onSaveMediaToFile(Lcom/android/camera/io/Path;)Z

    .line 175
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - onSaveMediaToFile() - End"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v7, v4, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v7, :cond_5

    .line 179
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v7, v7, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    iget v8, v8, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/io/SaveMediaTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 180
    :cond_5
    iget-object v7, v4, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v7, :cond_6

    .line 181
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v7, v7, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget v8, v8, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/io/SaveMediaTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 184
    :cond_6
    const/4 v7, 0x1

    invoke-static {v1, v7}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaved(Lcom/android/camera/io/Path;)V

    .line 190
    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - End"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    .line 191
    goto/16 :goto_0
.end method

.method public final setFilePathToMediaInfo(Lcom/android/camera/io/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object p1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 56
    return-void
.end method
