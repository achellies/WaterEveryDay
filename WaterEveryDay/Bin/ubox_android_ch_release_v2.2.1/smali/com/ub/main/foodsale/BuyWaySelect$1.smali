.class Lcom/ub/main/foodsale/BuyWaySelect$1;
.super Ljava/lang/Object;
.source "BuyWaySelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/BuyWaySelect;->initView()V
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
.field final synthetic this$0:Lcom/ub/main/foodsale/BuyWaySelect;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/BuyWaySelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 59
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    iget-object v3, v2, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    iget-object v2, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    iget-object v2, v2, Lcom/ub/main/foodsale/BuyWaySelect;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "id"

    iget-object v3, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    iget-object v3, v3, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->getSelectedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    iget-object v2, v2, Lcom/ub/main/foodsale/BuyWaySelect;->adapter:Lcom/ub/main/foodsale/BuyWaySelectAdapter;

    invoke-virtual {v2, p3}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;

    .line 64
    .local v1, select:Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    const-string v2, "detail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/ub/main/foodsale/BuyWaySelect;->setResult(ILandroid/content/Intent;)V

    .line 66
    iget-object v2, p0, Lcom/ub/main/foodsale/BuyWaySelect$1;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/BuyWaySelect;->finish()V

    .line 67
    return-void
.end method
