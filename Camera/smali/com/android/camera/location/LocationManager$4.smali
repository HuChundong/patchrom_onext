.class Lcom/android/camera/location/LocationManager$4;
.super Lcom/android/camera/trigger/Trigger;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/location/LocationManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/location/LocationManager$4;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$4;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->startLocationUpdate()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$500(Lcom/android/camera/location/LocationManager;)V

    .line 249
    return-void
.end method
