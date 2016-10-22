.class final Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/SearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/search/SearchEngineManagerService;


# direct methods
.method private constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;
    .param p2, "x1"    # Lcom/mediatek/search/SearchEngineManagerService$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    # invokes: Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$100(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 191
    return-void
.end method
