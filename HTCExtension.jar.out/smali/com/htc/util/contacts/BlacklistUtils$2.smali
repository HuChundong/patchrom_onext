.class final Lcom/htc/util/contacts/BlacklistUtils$2;
.super Ljava/lang/Thread;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$person_id:J


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-wide p1, p0, Lcom/htc/util/contacts/BlacklistUtils$2;->val$person_id:J

    iput-object p3, p0, Lcom/htc/util/contacts/BlacklistUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 399
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/htc/util/contacts/BlacklistUtils$2;->val$person_id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 400
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/util/contacts/BlacklistUtils$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 401
    return-void
.end method
