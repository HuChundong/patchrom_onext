.class public final Lcom/android/camera/share/MediaShareDialogBuilder;
.super Ljava/lang/Object;
.source "MediaShareDialogBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 6
    .parameter "context"
    .parameter
    .parameter "lastShareAppNamePref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/dialog/HtcAlertDialog;"
        }
    .end annotation

    .prologue
    .local p1, mediaInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    const/4 v2, 0x0

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 33
    .local v3, preferences:Landroid/content/SharedPreferences;
    if-eqz p2, :cond_0

    invoke-interface {v3, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, lastShareAppName:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/camera/share/MediaShareListAdapter;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/share/MediaShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 39
    .local v0, adapter:Lcom/android/camera/share/MediaShareListAdapter;
    new-instance v1, Lcom/android/camera/share/MediaShareDialogBuilder$1;

    invoke-direct {v1, v0, p2, v3, p0}, Lcom/android/camera/share/MediaShareDialogBuilder$1;-><init>(Lcom/android/camera/share/MediaShareListAdapter;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 76
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20400a1

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    return-object v4
.end method
