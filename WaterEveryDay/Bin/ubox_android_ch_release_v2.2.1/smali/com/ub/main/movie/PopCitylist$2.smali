.class Lcom/ub/main/movie/PopCitylist$2;
.super Ljava/lang/Object;
.source "PopCitylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/PopCitylist;->loadCitylist(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist$2;->this$0:Lcom/ub/main/movie/PopCitylist;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist$2;->this$0:Lcom/ub/main/movie/PopCitylist;

    iget-object v1, p0, Lcom/ub/main/movie/PopCitylist$2;->this$0:Lcom/ub/main/movie/PopCitylist;

    #getter for: Lcom/ub/main/movie/PopCitylist;->cList:Lcom/ub/main/movie/CustomList;
    invoke-static {v1}, Lcom/ub/main/movie/PopCitylist;->access$3(Lcom/ub/main/movie/PopCitylist;)Lcom/ub/main/movie/CustomList;

    move-result-object v1

    #calls: Lcom/ub/main/movie/PopCitylist;->setListSelectedStyle(Lcom/ub/main/movie/CustomList;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/ub/main/movie/PopCitylist;->access$1(Lcom/ub/main/movie/PopCitylist;Lcom/ub/main/movie/CustomList;Landroid/view/View;)V

    .line 118
    return-void
.end method
