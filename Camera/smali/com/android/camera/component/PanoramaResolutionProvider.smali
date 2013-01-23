.class final Lcom/android/camera/component/PanoramaResolutionProvider;
.super Lcom/android/camera/SubsetPhotoResolutionProvider;
.source "PanoramaResolutionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/PanoramaResolutionProvider$1;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 26
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne p1, v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 29
    .local v0, isWideRatio:Z
    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/android/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v2}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 39
    :cond_0
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    .line 41
    .end local v0           #isWideRatio:Z
    :goto_0
    return-object v1

    .line 34
    .restart local v0       #isWideRatio:Z
    :pswitch_0
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    goto :goto_0

    .line 41
    .end local v0           #isWideRatio:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 3
    .parameter "cameraType"

    .prologue
    .line 50
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne p1, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    .local v0, isWideRatio:Z
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/android/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v2}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    :cond_0
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    .line 65
    .end local v0           #isWideRatio:Z
    :goto_0
    return-object v1

    .line 58
    .restart local v0       #isWideRatio:Z
    :pswitch_0
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    goto :goto_0

    .line 65
    .end local v0           #isWideRatio:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 1
    .parameter "cameraType"

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne p1, v0, :cond_0

    .line 75
    const-string v0, "pref_panorama_resolution"

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
