.class Lcom/ub/main/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    const-wide/16 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    #setter for: Lcom/ub/main/LaunchActivity;->LATITUDE:D
    invoke-static {v0, v1, v2}, Lcom/ub/main/LaunchActivity;->access$0(Lcom/ub/main/LaunchActivity;D)V

    .line 294
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    #setter for: Lcom/ub/main/LaunchActivity;->LONGITUDE:D
    invoke-static {v0, v1, v2}, Lcom/ub/main/LaunchActivity;->access$1(Lcom/ub/main/LaunchActivity;D)V

    .line 295
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->LATITUDE:D
    invoke-static {v0}, Lcom/ub/main/LaunchActivity;->access$2(Lcom/ub/main/LaunchActivity;)D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_0

    const-string v0, " "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/util/NetConfig;->LATITUDE:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->LONGITUDE:D
    invoke-static {v0}, Lcom/ub/main/LaunchActivity;->access$3(Lcom/ub/main/LaunchActivity;)D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, " "

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/util/NetConfig;->LONGITUDE:Ljava/lang/String;

    .line 298
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->LATITUDE:D
    invoke-static {v0}, Lcom/ub/main/LaunchActivity;->access$2(Lcom/ub/main/LaunchActivity;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/ub/main/LaunchActivity$1;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->LONGITUDE:D
    invoke-static {v0}, Lcom/ub/main/LaunchActivity;->access$3(Lcom/ub/main/LaunchActivity;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 302
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 305
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 309
    return-void
.end method
