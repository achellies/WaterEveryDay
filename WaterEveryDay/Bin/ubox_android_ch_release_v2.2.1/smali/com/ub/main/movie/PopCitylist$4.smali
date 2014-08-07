.class Lcom/ub/main/movie/PopCitylist$4;
.super Ljava/lang/Object;
.source "PopCitylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/PopCitylist;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/PopCitylist;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/PopCitylist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 132
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$3(Lcom/ub/main/movie/PopCitylist;)Lcom/ub/main/movie/CustomList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ub/main/movie/CustomList;->getSelectedItemTxt()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, cityName:Ljava/lang/String;
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    iput-object v1, v3, Lcom/ub/main/movie/PopCitylist;->city:Ljava/lang/String;

    .line 134
    if-nez v1, :cond_0

    .line 135
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$4(Lcom/ub/main/movie/PopCitylist;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u60a8\u8fd8\u6ca1\u6709\u9009\u62e9\u57ce\u5e02\uff01"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 150
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$5(Lcom/ub/main/movie/PopCitylist;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 140
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->msgId:I
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$6(Lcom/ub/main/movie/PopCitylist;)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, bund:Landroid/os/Bundle;
    const-string v3, "city"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$5(Lcom/ub/main/movie/PopCitylist;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    .end local v0           #bund:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    const-class v3, Lcom/ub/main/login/RegisterUI;

    iget-object v4, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/ub/main/movie/PopCitylist;->access$4(Lcom/ub/main/movie/PopCitylist;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/ub/main/movie/PopCitylist;->access$4(Lcom/ub/main/movie/PopCitylist;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v3, v1}, Lcom/ub/main/login/RegisterUI;->setCityETText(Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/ub/main/movie/PopCitylist$4;->this$0:Lcom/ub/main/movie/PopCitylist;

    invoke-virtual {v3}, Lcom/ub/main/movie/PopCitylist;->dismiss()V

    goto :goto_0
.end method
