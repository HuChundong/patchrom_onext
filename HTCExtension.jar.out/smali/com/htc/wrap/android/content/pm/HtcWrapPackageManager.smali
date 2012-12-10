.class public Lcom/htc/wrap/android/content/pm/HtcWrapPackageManager;
.super Ljava/lang/Object;
.source "HtcWrapPackageManager.java"


# static fields
.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MOVE_EXTERNAL_MEDIA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcWrapPackageManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installPreloadPackages(Landroid/content/pm/IPackageManager;[Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;)V
    .locals 2
    .parameter "pm"
    .parameter "packageList"
    .parameter "observer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    const-string v0, "HtcWrapPackageManager"

    const-string v1, "no-op; Please use another API parameter is PackageManager not IPackageManager !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static installPreloadPackages(Landroid/content/pm/PackageManager;[Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;)V
    .locals 2
    .parameter "pm"
    .parameter "packageList"
    .parameter "observer"

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    const-string v0, "HtcWrapPackageManager"

    const-string v1, "PackageManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->installPreloadPackages([Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;)V

    goto :goto_0
.end method

.method public static queryUninstalledPreloadAPs(Landroid/content/pm/PackageManager;)[Ljava/lang/String;
    .locals 2
    .parameter "pm"

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    const-string v0, "HtcWrapPackageManager"

    const-string v1, "PackageManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->queryUninstalledPreloadAPs()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method