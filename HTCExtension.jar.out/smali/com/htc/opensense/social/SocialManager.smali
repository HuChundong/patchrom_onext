.class public Lcom/htc/opensense/social/SocialManager;
.super Ljava/lang/Object;
.source "SocialManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,
        Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;
    }
.end annotation


# static fields
.field public static final ACTION_PLUGIN_INTENT:Ljava/lang/String; = "com.htc.opensense.social.SocialPlugin"

.field public static final ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_NO_ACCOUNT:I = 0x9

.field public static final ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final KEY_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final KEY_FEATURES:Ljava/lang/String; = "features"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field public static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field public static final KEY_SOCIAL_MANAGER_RESPONSE:Ljava/lang/String; = "socialManagerResponse"

.field public static final KEY_SOCIAL_PLUGIN_RESPONSE:Ljava/lang/String; = "socialPluginResponse"

.field public static final KEY_SYNC_STREAM_TYPE:Ljava/lang/String; = "syncStreamType"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PLUGIN_ATTRIBUTES_NAME:Ljava/lang/String; = "social-plugin"

.field public static final PLUGIN_META_DATA_NAME:Ljava/lang/String; = "com.htc.opensense.social.SocialPlugin"


# instance fields
.field private mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

.field private mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Lcom/htc/opensense/social/ISocialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/opensense/social/SocialManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;)V
    .locals 5
    .parameter "context"
    .parameter "connectionListener"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    .line 178
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/opensense/social/SocialManager;->mMainHandler:Landroid/os/Handler;

    .line 179
    iput-object p2, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/opensense/social/SocialManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".SocialManagerService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    iget-object v3, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/social/SocialManager;)Lcom/htc/opensense/social/ISocialManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/social/SocialManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/social/SocialManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/opensense/social/SocialManager;->ensureNotOnMainThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/opensense/social/SocialManager;ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/social/SocialManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public static final addContact(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter "options"
    .parameter "account"
    .parameter "contactSourceId"

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "account cannot be empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 264
    :cond_0
    if-nez p2, :cond_1

    .line 265
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Contact source id cannot be empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, accountHash:Ljava/lang/String;
    if-nez p0, :cond_2

    .line 270
    new-instance p0, Landroid/os/Bundle;

    .end local p0
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .restart local p0
    :cond_2
    const-string v8, "contacts"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 273
    .local v4, contacts:Landroid/os/Bundle;
    if-nez v4, :cond_3

    .line 274
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #contacts:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 276
    .restart local v4       #contacts:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, ac:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 278
    .local v1, accountContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    array-length v8, v0

    if-lez v8, :cond_4

    .line 279
    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v7, v3, v5

    .line 280
    .local v7, uid:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #uid:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    const-string v8, "contacts"

    invoke-virtual {p0, v8, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    return-object p0
.end method

.method public static connect(Landroid/content/Context;Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;)Lcom/htc/opensense/social/SocialManager;
    .locals 2
    .parameter "context"
    .parameter "connectionListener"

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    if-nez p1, :cond_1

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SocialManagerConnection must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/SocialManager;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/social/SocialManager;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;)V

    return-object v0
.end method

.method private convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 688
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 689
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 704
    :goto_0
    return-object v0

    .line 692
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 697
    new-instance v0, Lcom/htc/opensense/social/PluginException;

    invoke-direct {v0, p2}, Lcom/htc/opensense/social/PluginException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_3
    new-instance v0, Lcom/htc/opensense/social/PluginException;

    invoke-direct {v0, p2}, Lcom/htc/opensense/social/PluginException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 674
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 675
    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, exception:Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 682
    throw v0

    .line 685
    .end local v0           #exception:Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    invoke-interface {v0}, Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;->onBinderDied()V

    .line 245
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 160
    iput-object v3, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    .line 161
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_0
    iput-object v3, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    .line 172
    :cond_0
    iput-object v3, p0, Lcom/htc/opensense/social/SocialManager;->mContext:Landroid/content/Context;

    .line 173
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/util/NoSuchElementException;
    sget-object v1, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The DeathRecipient is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v1, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ISocialManager cannot be retrieved as a Binder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/opensense/social/ISocialManager;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccountsByFeatures([Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 1
    .parameter "features"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<[Landroid/accounts/Account;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/htc/opensense/social/SocialManager$2;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$2;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    invoke-interface {v1, p1}, Lcom/htc/opensense/social/ISocialManager;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDataSources(Ljava/lang/String;[Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "accountType"
    .parameter "features"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$7;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$7;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialManager;->getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "account"
    .parameter "features"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    if-nez p2, :cond_1

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/SocialManager$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$1;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$1;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    invoke-interface {v2}, Lcom/htc/opensense/social/ISocialManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 252
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 195
    invoke-static {p2}, Lcom/htc/opensense/social/ISocialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    .line 198
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    invoke-interface {v1, p0}, Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;->onConnected(Lcom/htc/opensense/social/SocialManager;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Binder already died."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialManager;->binderDied()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager;->mConnectionListener:Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;

    invoke-interface {v1}, Lcom/htc/opensense/social/SocialManager$SocialManagerConnection;->onDisconnected()V

    .line 231
    :cond_1
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/util/NoSuchElementException;
    sget-object v1, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The DeathRecipient is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v1, Lcom/htc/opensense/social/SocialManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ISocialManager cannot be retrieved as a Binder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public publishActivityStream([Landroid/accounts/Account;Landroid/os/Bundle;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "accounts"
    .parameter "options"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$4;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$4;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public syncActivityStreams([Landroid/accounts/Account;Landroid/os/Bundle;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "accounts"
    .parameter "options"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$3;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$3;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public syncContacts([Landroid/accounts/Account;Landroid/os/Bundle;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "accounts"
    .parameter "options"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$6;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$6;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public syncLists([Landroid/accounts/Account;Landroid/os/Bundle;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
    .locals 6
    .parameter "accounts"
    .parameter "options"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/htc/opensense/social/SocialManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/htc/opensense/social/SocialManager$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/social/SocialManager$5;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialManager$5;->start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    move-result-object v0

    return-object v0
.end method
