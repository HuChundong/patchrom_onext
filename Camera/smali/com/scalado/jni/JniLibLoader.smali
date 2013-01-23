.class public Lcom/scalado/jni/JniLibLoader;
.super Ljava/lang/Object;
.source "JniLibLoader.java"


# instance fields
.field private isLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    return-void
.end method

.method public static loadStaticFromLibLoaderPaths()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected static outputDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 49
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)V
    .locals 3
    .parameter "libPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "JNI"

    const-string v1, "Trying to load native library with load"

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, " - JNI"

    const-string v1, "Native library already loaded"

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, " - JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    goto :goto_0
.end method

.method public loadFromConfigurationFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "configurationFileName"
    .parameter "keyWord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 145
    const-string v2, "JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to load native library specified in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v2, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    if-eqz v2, :cond_0

    .line 148
    const-string v2, " - JNI"

    const-string v3, "Native library already loaded"

    invoke-static {v2, v3}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/scalado/jni/JniConfigurationFile;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    .local v1, libPath:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 160
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Can not find the keyword "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v1           #libPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Can not find the configaration file or any library file specification in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using key word "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #libPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/scalado/jni/JniLibLoader;->load(Ljava/lang/String;)V

    .line 163
    const-string v2, " - JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    goto :goto_0
.end method

.method public loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V
    .locals 4
    .parameter "loaderSettings"

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "JNI"

    const-string v2, "Native library already loaded"

    invoke-static {v1, v2}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/jni/JniLibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, " - JNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to loadLibrary(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 77
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/jni/JniLibLoader;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, " - JNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->libPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 86
    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationFilename()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scalado/jni/JniLibLoader;->loadFromConfigurationFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load from configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using key word "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Library specified in the configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using key word "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/scalado/jni/LibLoaderSettings;->configurationKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed because of exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "No library specified in JniLibLoaderPaths"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 3
    .parameter "libName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, "JNI"

    const-string v1, "Trying to load native library with loadLibrary"

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, " - JNI"

    const-string v1, "Native library already loaded"

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v0, " - JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scalado/jni/JniLibLoader;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/jni/JniLibLoader;->isLoaded:Z

    goto :goto_0
.end method
