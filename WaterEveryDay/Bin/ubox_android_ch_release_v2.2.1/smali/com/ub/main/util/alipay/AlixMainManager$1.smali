.class Lcom/ub/main/util/alipay/AlixMainManager$1;
.super Landroid/os/Handler;
.source "AlixMainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/util/alipay/AlixMainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/util/alipay/AlixMainManager;


# direct methods
.method constructor <init>(Lcom/ub/main/util/alipay/AlixMainManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 166
    :try_start_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 168
    .local v9, strRet:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    .end local v9           #strRet:Ljava/lang/String;
    :goto_1
    return-void

    .line 171
    .restart local v9       #strRet:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v12}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 173
    const-string v12, "stone-zhifu"

    invoke-static {v12, v9}, Lcom/ub/main/util/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    const-string v4, "memo="

    .line 177
    .local v4, memo:Ljava/lang/String;
    const-string v12, "memo="

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, imemoStart:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v3, v12

    .line 179
    const-string v12, ";result="

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, imemoEnd:I
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v12, "stone-zhifu"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " memo-1=["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v5, Lcom/ub/main/util/alipay/ResultChecker;

    invoke-direct {v5, v9}, Lcom/ub/main/util/alipay/ResultChecker;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, resultChecker:Lcom/ub/main/util/alipay/ResultChecker;
    invoke-virtual {v5}, Lcom/ub/main/util/alipay/ResultChecker;->checkSign()I

    move-result v8

    .line 185
    .local v8, retVal:I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    #getter for: Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;
    invoke-static {v12}, Lcom/ub/main/util/alipay/AlixMainManager;->access$0(Lcom/ub/main/util/alipay/AlixMainManager;)Landroid/app/Activity;

    move-result-object v12

    .line 188
    const-string v13, "\u63d0\u793a"

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    #getter for: Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;
    invoke-static {v14}, Lcom/ub/main/util/alipay/AlixMainManager;->access$0(Lcom/ub/main/util/alipay/AlixMainManager;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 190
    const v15, 0x7f060017

    .line 189
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 191
    const v15, 0x1080027

    .line 186
    invoke-static {v12, v13, v14, v15}, Lcom/ub/main/util/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    .end local v2           #imemoEnd:I
    .end local v3           #imemoStart:I
    .end local v4           #memo:Ljava/lang/String;
    .end local v5           #resultChecker:Lcom/ub/main/util/alipay/ResultChecker;
    .end local v8           #retVal:I
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    #getter for: Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;
    invoke-static {v12}, Lcom/ub/main/util/alipay/AlixMainManager;->access$0(Lcom/ub/main/util/alipay/AlixMainManager;)Landroid/app/Activity;

    move-result-object v12

    const-string v13, "\u63d0\u793a"

    const-string v14, "\u64cd\u4f5c\u5df2\u53d6\u6d88!"

    .line 218
    const v15, 0x7f02007b

    .line 217
    invoke-static {v12, v13, v14, v15}, Lcom/ub/main/util/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 225
    .end local v1           #e:Ljava/lang/Exception;
    .end local v9           #strRet:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 226
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #imemoEnd:I
    .restart local v3       #imemoStart:I
    .restart local v4       #memo:Ljava/lang/String;
    .restart local v5       #resultChecker:Lcom/ub/main/util/alipay/ResultChecker;
    .restart local v8       #retVal:I
    .restart local v9       #strRet:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    .line 194
    .local v10, success_resultStatus:Z
    const/4 v11, 0x0

    .line 195
    .local v11, success_success:Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    const-string v13, "resultStatus="

    const-string v14, ";memo="

    #calls: Lcom/ub/main/util/alipay/AlixMainManager;->payResultStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v9, v13, v14}, Lcom/ub/main/util/alipay/AlixMainManager;->access$1(Lcom/ub/main/util/alipay/AlixMainManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, resultResponseString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    const-string v13, "success="

    const-string v14, "&sign_type="

    #calls: Lcom/ub/main/util/alipay/AlixMainManager;->paySuccessStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v9, v13, v14}, Lcom/ub/main/util/alipay/AlixMainManager;->access$2(Lcom/ub/main/util/alipay/AlixMainManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, resultSuccessString:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v12, "9000"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 198
    const/4 v10, 0x1

    .line 201
    :cond_2
    const-string v12, "true"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 202
    const/4 v11, 0x1

    .line 206
    :cond_3
    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    #getter for: Lcom/ub/main/util/alipay/AlixMainManager;->payResultProcessListener:Lcom/ub/main/data/PayResultProcessListener;
    invoke-static {v12}, Lcom/ub/main/util/alipay/AlixMainManager;->access$3(Lcom/ub/main/util/alipay/AlixMainManager;)Lcom/ub/main/data/PayResultProcessListener;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/util/alipay/AlixMainManager$1;->this$0:Lcom/ub/main/util/alipay/AlixMainManager;

    #getter for: Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;
    invoke-static {v15}, Lcom/ub/main/util/alipay/AlixMainManager;->access$0(Lcom/ub/main/util/alipay/AlixMainManager;)Landroid/app/Activity;

    move-result-object v15

    invoke-interface {v12, v13, v14, v4, v15}, Lcom/ub/main/data/PayResultProcessListener;->payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
