.class Lcom/android/camera/component/ContinuousBurstUI$5;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    const/16 v2, 0x2712

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 377
    sget-object v1, Lcom/android/camera/component/ContinuousBurstUI$7;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->canUseContinuousBurst()Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1900(Lcom/android/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/ContinuousBurstUI;->access$2002(Lcom/android/camera/component/ContinuousBurstUI;Z)Z

    .line 388
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v10

    .line 390
    .local v10, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$2100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentScene = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v10, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, v10, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$2200(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "takingPictureState.onPropertyChanged() - currentScene == SmartSceneDetectorScene"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    const/4 v9, 0x0

    .line 418
    .local v9, burstMode:I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$2300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Press capture button"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$2400(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->enter()V

    .line 427
    iget-object v0, v10, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ContinuousBurstUI;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v4}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v4

    int-to-long v6, v4

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V
    invoke-static {v0, v9}, Lcom/android/camera/component/ContinuousBurstUI;->access$1600(Lcom/android/camera/component/ContinuousBurstUI;I)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$500(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v8}, Lcom/android/camera/component/ContinuousBurstUI;->access$1702(Lcom/android/camera/component/ContinuousBurstUI;Z)Z

    .line 437
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v8}, Lcom/android/camera/component/ContinuousBurstUI;->access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/4 v1, -0x1

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$2502(Lcom/android/camera/component/ContinuousBurstUI;I)I

    goto/16 :goto_0

    .line 397
    .end local v9           #burstMode:I
    :cond_3
    const/4 v9, 0x1

    .restart local v9       #burstMode:I
    goto :goto_1

    .line 400
    .end local v9           #burstMode:I
    :cond_4
    iget-object v0, v10, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/AutoDetectedScene;

    .line 401
    .local v11, scene:Lcom/android/camera/AutoDetectedScene;
    sget-object v0, Lcom/android/camera/component/ContinuousBurstUI$7;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    invoke-virtual {v11}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    const/4 v9, 0x0

    .restart local v9       #burstMode:I
    goto/16 :goto_1

    .line 407
    .end local v9           #burstMode:I
    :cond_5
    const/4 v9, 0x1

    .line 408
    .restart local v9       #burstMode:I
    goto/16 :goto_1

    .line 410
    .end local v9           #burstMode:I
    :pswitch_2
    const/4 v9, 0x2

    .line 411
    .restart local v9       #burstMode:I
    goto/16 :goto_1

    .line 448
    .end local v9           #burstMode:I
    .end local v10           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v11           #scene:Lcom/android/camera/AutoDetectedScene;
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ContinuousBurstUI;->removeMessages(I)V

    goto/16 :goto_0

    .line 453
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$2400(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1400(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 456
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v3}, Lcom/android/camera/component/ContinuousBurstUI;->access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I

    .line 457
    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$5;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->exit()V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method