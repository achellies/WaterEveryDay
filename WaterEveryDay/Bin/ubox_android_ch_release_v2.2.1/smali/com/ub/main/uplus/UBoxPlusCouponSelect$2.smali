.class Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;
.super Ljava/lang/Object;
.source "UBoxPlusCouponSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/uplus/UBoxPlusCouponSelect;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;


# direct methods
.method constructor <init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$1(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Lcom/ub/main/adapter/UPlusCouponListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ub/main/adapter/UPlusCouponListAdapter;->setSelected(I)V

    .line 119
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$1(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Lcom/ub/main/adapter/UPlusCouponListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/adapter/UPlusCouponListAdapter;->notifyDataSetChanged()V

    .line 120
    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$2(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$3(Lcom/ub/main/uplus/UBoxPlusCouponSelect;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_CREATE_COUPON:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 123
    const/4 v2, 0x4

    new-array v2, v2, [[Ljava/lang/String;

    .line 124
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "device_no"

    aput-object v4, v3, v6

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v2, v6

    .line 125
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "app_id"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->appId:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$4(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v2, v7

    .line 126
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "device_token"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    invoke-virtual {v4}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v2, v5

    const/4 v3, 0x3

    .line 127
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "template_id"

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateId:Ljava/lang/String;
    invoke-static {v5}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$5(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    .line 123
    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->creatHttpProtocolPostString([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    invoke-virtual {v3}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    const-string v5, "\u6b63\u5728\u5151\u6362\u4f18\u60e0\u5238..."

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 130
    return-void
.end method
