.class public Lcom/ub/main/adapter/ListAdapter2;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/adapter/ListAdapter2;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ub/main/adapter/ListAdapter2;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, holder:Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    invoke-direct {v0, p0}, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;-><init>(Lcom/ub/main/adapter/ListAdapter2;)V

    .line 54
    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter2;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v1, 0x7f080102

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->img1:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f080103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->title:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f080104

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->img2:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->img1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter2;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "img1"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter2;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;->img2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter2;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "img2"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    return-object p2

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    check-cast v0, Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;

    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter2$ViewHolder2;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter2;->data:Ljava/util/List;

    .line 29
    return-void
.end method
