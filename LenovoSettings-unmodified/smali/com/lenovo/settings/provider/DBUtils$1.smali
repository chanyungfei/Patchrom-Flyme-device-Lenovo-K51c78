.class final Lcom/lenovo/settings/provider/DBUtils$1;
.super Ljava/lang/Thread;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/provider/DBUtils;->initAllItems(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/settings/provider/DBUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "DBUtils"

    const-string v1, "[initAllItems] enter"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-boolean v2, Lcom/lenovo/settings/provider/DBUtils;->sIsInitialized:Z

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/provider/DBUtils$1;->setPriority(I)V

    .line 61
    iget-object v0, p0, Lcom/lenovo/settings/provider/DBUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/lenovo/settings/provider/DBUtils;->loadDefaultHeaderMappingsIfNecessary(Landroid/content/Context;I)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/settings/provider/DBUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/provider/DBUtils;->loadPluginItemsIfNecessary(Landroid/content/Context;)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/provider/DBUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->loadAllPluginItems(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/settings/provider/DBUtils;->sIsInitialized:Z

    .line 70
    const-string v0, "DBUtils"

    const-string v1, "[initAllItems] end"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
