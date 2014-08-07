.class Lcom/apns/APNService$MyAgent;
.super Lcom/apns/APNSAgent;
.source "APNService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apns/APNService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apns/APNService;


# direct methods
.method public constructor <init>(Lcom/apns/APNService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "group"
    .parameter "devId"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/apns/APNService$MyAgent;->this$0:Lcom/apns/APNService;

    .line 215
    invoke-direct {p0, p2, p3, p4}, Lcom/apns/APNSAgent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 226
    #calls: Lcom/apns/APNService;->log(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apns/APNService;->access$0(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/apns/APNSAgent;->onDisconnect()V

    .line 221
    const-string v0, "disconnected"

    #calls: Lcom/apns/APNService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apns/APNService;->access$0(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onErr(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/apns/APNService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apns/APNService;->access$0(Ljava/lang/String;)V

    .line 232
    return-void
.end method
