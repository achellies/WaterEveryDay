.class Lcom/ub/main/login/RegisterUI$2;
.super Ljava/lang/Object;
.source "RegisterUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/RegisterUI;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/RegisterUI;


# direct methods
.method constructor <init>(Lcom/ub/main/login/RegisterUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/RegisterUI$2;->this$0:Lcom/ub/main/login/RegisterUI;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 190
    iget-object v1, p0, Lcom/ub/main/login/RegisterUI$2;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v1}, Lcom/ub/main/login/RegisterUI;->dismissLoadingDialog()V

    .line 191
    iget-object v1, p0, Lcom/ub/main/login/RegisterUI$2;->this$0:Lcom/ub/main/login/RegisterUI;

    iget-object v3, p0, Lcom/ub/main/login/RegisterUI$2;->this$0:Lcom/ub/main/login/RegisterUI;

    const-string v5, "\u6ce8\u518c\u77ed\u4fe1\u53d1\u9001\u4e2d..."

    invoke-virtual {v1, v3, v5}, Lcom/ub/main/login/RegisterUI;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 195
    .local v0, smsManager:Landroid/telephony/SmsManager;
    new-instance v6, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, sentIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ub/main/login/RegisterUI$2;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-static {v1, v7, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 198
    .local v4, sentPI:Landroid/app/PendingIntent;
    sget-object v1, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CODE:Ljava/lang/String;

    sget-object v3, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CONENT:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 199
    return-void
.end method
