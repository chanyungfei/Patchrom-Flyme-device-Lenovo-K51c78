.class final Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;
.super Ljava/lang/Object;
.source "PackageChangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/PackageChangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageUpdateTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mContext:Landroid/content/Context;

.field mOp:I

.field mPackages:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mOp:I

    .line 91
    iput-object p3, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mPackages:[Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 96
    iget-object v2, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mContext:Landroid/content/Context;

    .line 97
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mPackages:[Ljava/lang/String;

    .line 98
    .local v7, "packages":[Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v6

    .line 99
    .local v6, "index":Lcom/lenovo/settings/search/Index;
    array-length v0, v7

    .line 100
    .local v0, "N":I
    iget v12, p0, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;->mOp:I

    packed-switch v12, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const/4 v1, 0x0

    .line 103
    .local v1, "added":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 106
    :try_start_0
    aget-object v11, v7, v5

    invoke-static {v2, v11}, Lcom/lenovo/settings/provider/DBUtils;->addPluginFromPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 107
    aget-object v11, v7, v5

    invoke-virtual {v6, v11}, Lcom/lenovo/settings/search/Index;->addFromRemoteProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "PackageUpdateTask"

    const-string v12, "addPluginFromPackage failed!"

    invoke-static {v11, v12, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v1, :cond_0

    .line 116
    invoke-static {v2}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->loadAllPluginItems(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    .end local v1    # "added":Z
    .end local v5    # "i":I
    :pswitch_1
    const/4 v10, 0x0

    .line 121
    .local v10, "updated":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v0, :cond_4

    .line 124
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    aget-object v13, v7, v5

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    .line 125
    .local v8, "pkgState":I
    if-eqz v8, :cond_2

    if-ne v11, v8, :cond_3

    :cond_2
    move v4, v11

    .line 127
    .local v4, "enabled":Z
    :goto_4
    aget-object v12, v7, v5

    invoke-static {v2, v12, v4}, Lcom/lenovo/settings/provider/DBUtils;->updatePluginByPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    .line 128
    aget-object v12, v7, v5

    invoke-virtual {v6, v12, v4}, Lcom/lenovo/settings/search/Index;->updateFromRemoteProvider(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v4    # "enabled":Z
    .end local v8    # "pkgState":I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 125
    .restart local v8    # "pkgState":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 129
    .end local v8    # "pkgState":I
    :catch_1
    move-exception v3

    .line 130
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v12, "PackageUpdateTask"

    const-string v13, "updatePluginByPackage failed!"

    invoke-static {v12, v13, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v10, :cond_0

    .line 137
    invoke-static {v2}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->loadAllPluginItems(Landroid/content/Context;)V

    goto :goto_0

    .line 141
    .end local v5    # "i":I
    .end local v10    # "updated":Z
    :pswitch_2
    const/4 v9, 0x0

    .line 142
    .local v9, "removed":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v0, :cond_6

    .line 145
    :try_start_2
    aget-object v11, v7, v5

    invoke-static {v2, v11}, Lcom/lenovo/settings/provider/DBUtils;->removePluginByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 146
    if-eqz v9, :cond_5

    .line 147
    aget-object v11, v7, v5

    invoke-virtual {v6, v11}, Lcom/lenovo/settings/search/Index;->deleteFromRemoteProvider(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 149
    :catch_2
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "PackageUpdateTask"

    const-string v12, "updatePluginByPackage failed!"

    invoke-static {v11, v12, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v9, :cond_0

    .line 157
    invoke-static {v2}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->loadAllPluginItems(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
