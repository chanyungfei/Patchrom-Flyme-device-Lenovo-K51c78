.class final Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
.super Ljava/lang/Object;
.source "PluginItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/pluginItem/PluginItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathClassLoaderItem"
.end annotation


# instance fields
.field public pathClassLoader:Ldalvik/system/PathClassLoader;

.field public sourceDir:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;-><init>()V

    return-void
.end method
