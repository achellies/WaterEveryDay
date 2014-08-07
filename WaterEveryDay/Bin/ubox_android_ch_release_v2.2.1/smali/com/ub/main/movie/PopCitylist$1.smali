.class Lcom/ub/main/movie/PopCitylist$1;
.super Ljava/lang/Object;
.source "PopCitylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/PopCitylist;->loadProvincelist()V
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
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist$1;->this$0:Lcom/ub/main/movie/PopCitylist;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist$1;->this$0:Lcom/ub/main/movie/PopCitylist;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist$1;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->pList:Lcom/ub/main/movie/CustomList;
    invoke-static {v1}, Lcom/ub/main/movie/PopCitylist;->access$0(Lcom/ub/main/movie/PopCitylist;)Lcom/ub/main/movie/CustomList;

    move-result-object v1

    #calls: Lcom/ub/main/movie/PopCitylist;->setListSelectedStyle(Lcom/ub/main/movie/CustomList;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/ub/main/movie/PopCitylist;->access$1(Lcom/ub/main/movie/PopCitylist;Lcom/ub/main/movie/CustomList;Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist$1;->this$0:Lcom/ub/main/movie/PopCitylist;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/ub/main/movie/Label;

    .end local p1
    invoke-virtual {p1}, Lcom/ub/main/movie/Label;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/ub/main/movie/PopCitylist;->loadCitylist(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/movie/PopCitylist;->access$2(Lcom/ub/main/movie/PopCitylist;Ljava/lang/String;)V

    .line 85
    return-void
.end method
