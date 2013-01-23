.class public Lcom/android/camera/preferences/DurationPreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "DurationPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Lcom/android/camera/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/Duration;)V
    .locals 0
    .parameter "settingsOwner"
    .parameter "preferenceName"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter "defaultPropertyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/Duration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/Duration;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/preferences/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Lcom/android/camera/Duration;
    .locals 7

    .prologue
    .line 24
    iget-object v5, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v5}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 26
    iget-object v5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    check-cast v5, Lcom/android/camera/Duration;

    .line 58
    :goto_0
    return-object v5

    .line 29
    :cond_0
    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    const/4 v5, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const-string v5, "no_limit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 32
    sget-object v5, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    goto :goto_0

    .line 35
    :cond_2
    const/4 v4, 0x0

    .local v4, unitIndex:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 39
    if-lez v4, :cond_5

    .line 43
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 44
    .local v1, time:J
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, unit:Ljava/lang/String;
    const-string v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v5

    goto :goto_0

    .line 47
    :cond_3
    const-string v5, "min"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 48
    invoke-static {v1, v2}, Lcom/android/camera/Duration;->fromMinutes(J)Lcom/android/camera/Duration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 35
    .end local v1           #time:J
    .end local v3           #unit:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 50
    :catch_0
    move-exception v5

    .line 58
    :cond_5
    iget-object v5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    check-cast v5, Lcom/android/camera/Duration;

    goto :goto_0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/preferences/DurationPreferenceBinder;->getPreferenceValue()Lcom/android/camera/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected setPreferenceValue(Lcom/android/camera/Duration;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "none"

    .line 82
    .local v0, str:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v3}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 83
    return-void

    .line 67
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const-string v0, "no_limit"

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/Duration;->getMinutes()J

    move-result-wide v1

    .line 72
    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/android/camera/Duration;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/DurationPreferenceBinder;->setPreferenceValue(Lcom/android/camera/Duration;)V

    return-void
.end method
