.class public Lcom/lenovo/settings/pluginproxy/PluginProxy;
.super Ljava/lang/Object;
.source "PluginProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginProxy"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPluginCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/settings/pluginproxy/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mClassName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mPluginCache:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->refreshPlugins()V

    .line 28
    return-void
.end method

.method public static loadMultiObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-string v6, "PluginProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<loadMultiObject> className:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v4, Lcom/lenovo/settings/pluginproxy/PluginProxy;

    invoke-direct {v4, p0, p1}, Lcom/lenovo/settings/pluginproxy/PluginProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .local v4, "proxy":Lcom/lenovo/settings/pluginproxy/PluginProxy;
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->getPluginCount()I

    move-result v3

    .line 46
    .local v3, "pluginCount":I
    if-eqz v3, :cond_1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 49
    invoke-virtual {v4, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->getPlugin(I)Lcom/lenovo/settings/pluginproxy/Plugin;

    move-result-object v2

    .line 50
    .local v2, "plugin":Lcom/lenovo/settings/pluginproxy/Plugin;
    invoke-virtual {v2}, Lcom/lenovo/settings/pluginproxy/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v5

    .line 51
    .local v5, "tobj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    .end local v1    # "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "plugin":Lcom/lenovo/settings/pluginproxy/Plugin;
    .end local v5    # "tobj":Ljava/lang/Object;
    :cond_1
    const-string v6, "PluginProxy"

    const-string v7, "<loadMultiObject> plugin count is 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public static loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v2, "PluginProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<loadObject> className:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lcom/lenovo/settings/pluginproxy/PluginProxy;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/settings/pluginproxy/PluginProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .local v1, "proxy":Lcom/lenovo/settings/pluginproxy/PluginProxy;
    invoke-virtual {v1}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->getPluginCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->getPlugin(I)Lcom/lenovo/settings/pluginproxy/Plugin;

    move-result-object v0

    .line 35
    .local v0, "plugin":Lcom/lenovo/settings/pluginproxy/Plugin;
    invoke-virtual {v0}, Lcom/lenovo/settings/pluginproxy/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    .line 39
    .end local v0    # "plugin":Lcom/lenovo/settings/pluginproxy/Plugin;
    :goto_0
    return-object v2

    .line 37
    :cond_0
    const-string v2, "PluginProxy"

    const-string v3, "<loadObject> plugin count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshPlugins()V
    .locals 10

    .prologue
    .line 64
    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mPluginCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 66
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mClassName:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x84

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 69
    .local v5, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_1

    .line 70
    const-string v7, "PluginProxy"

    const-string v8, "<reloadPlugins> resolveInfoList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 75
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 76
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v6, :cond_2

    .line 77
    const-string v7, "PluginProxy"

    const-string v8, "<refreshPlugins> serviceInfo is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_2
    new-instance v3, Lcom/lenovo/settings/pluginproxy/Plugin;

    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v6}, Lcom/lenovo/settings/pluginproxy/Plugin;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 81
    .local v3, "plugin":Lcom/lenovo/settings/pluginproxy/Plugin;
    invoke-virtual {v3}, Lcom/lenovo/settings/pluginproxy/Plugin;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cn":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 83
    const-string v7, "PluginProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_3
    const-string v7, "PluginProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " class:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mPluginCache:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getPlugin(I)Lcom/lenovo/settings/pluginproxy/Plugin;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mPluginCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/pluginproxy/Plugin;

    return-object v0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/settings/pluginproxy/PluginProxy;->mPluginCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
