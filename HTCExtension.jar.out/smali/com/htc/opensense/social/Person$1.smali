.class final Lcom/htc/opensense/social/Person$1;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/opensense/social/Person;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Person;
    .locals 2
    .parameter "source"

    .prologue
    .line 49
    new-instance v0, Lcom/htc/opensense/social/Person;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/opensense/social/Person;-><init>(Landroid/os/Parcel;Lcom/htc/opensense/social/Person$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Person$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense/social/Person;
    .locals 1
    .parameter "size"

    .prologue
    .line 53
    new-array v0, p1, [Lcom/htc/opensense/social/Person;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Person$1;->newArray(I)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method
