.class Lcom/apns/APNService$1;
.super Landroid/content/BroadcastReceiver;
.source "APNService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apns/APNService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apns/APNService;


# direct methods
.method constructor <init>(Lcom/apns/APNService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apns/APNService$1;->this$0:Lcom/apns/APNService;

    .line 196
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    .line 201
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 203
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 205
    .local v0, hasConnectivity:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APNServer.Connectivity.connected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/apns/APNService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/apns/APNService;->access$0(Ljava/lang/String;)V

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/apns/APNService$1;->this$0:Lcom/apns/APNService;

    #calls: Lcom/apns/APNService;->doConnect()V
    invoke-static {v2}, Lcom/apns/APNService;->access$1(Lcom/apns/APNService;)V

    .line 209
    :cond_0
    return-void

    .line 204
    .end local v0           #hasConnectivity:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
