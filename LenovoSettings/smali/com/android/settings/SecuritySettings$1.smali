.class Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 206
    .local v1, "lstView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 207
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "lstView":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecuritySettings"

    const-string v3, "There is an exception"

    invoke-static {v2, v3, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
