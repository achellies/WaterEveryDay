.class public Lcom/ub/main/foodsale/BuyWaySelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "BuyWaySelectAdapter.java"


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private selectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->selectedId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->selectedId:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f080058

    .line 67
    move-object v2, p2

    .line 68
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 69
    iget-object v3, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 73
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;

    .line 75
    .local v1, item:Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
    const v3, 0x7f080056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->selectedId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->selectedId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-object v2

    .line 80
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->arrayList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public setSelectedId(Ljava/lang/String;)V
    .locals 0
    .parameter "selectedId"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->selectedId:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/ub/main/foodsale/BuyWaySelectAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
