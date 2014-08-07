.class Lcom/ub/main/LaunchActivity$3;
.super Ljava/lang/Thread;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/LaunchActivity;->getMacAdd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/LaunchActivity;

.field private final synthetic val$wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/ub/main/LaunchActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/LaunchActivity$3;->this$0:Lcom/ub/main/LaunchActivity;

    iput-object p2, p0, Lcom/ub/main/LaunchActivity$3;->val$wifi:Landroid/net/wifi/WifiManager;

    .line 150
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, num:I
    :goto_0
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->val$wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->val$wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 171
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/UIConfig;->setPHONE_MAC_ADDRESS(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->this$0:Lcom/ub/main/LaunchActivity;

    .line 175
    const-string v5, "macAddress"

    invoke-virtual {v4, v5, v6}, Lcom/ub/main/LaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 176
    .local v3, userData:Landroid/content/SharedPreferences$Editor;
    const-string v4, "mac"

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    .end local v3           #userData:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->val$wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 180
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ub/main/LaunchActivity;->access$5(Lcom/ub/main/LaunchActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :goto_1
    return-void

    .line 155
    :cond_1
    const/16 v4, 0xf

    if-ge v2, v4, :cond_2

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 158
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Lcom/ub/main/LaunchActivity$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->val$wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 166
    iget-object v4, p0, Lcom/ub/main/LaunchActivity$3;->this$0:Lcom/ub/main/LaunchActivity;

    #getter for: Lcom/ub/main/LaunchActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ub/main/LaunchActivity;->access$5(Lcom/ub/main/LaunchActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
