.class final Landroid/app/ContextImpl$69;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 865
    const/4 v1, 0x0

    .line 867
    .local v1, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    :try_start_0
    new-instance v2, Lcom/mediatek/perfservice/PerfServiceWrapper;

    invoke-direct {v2, p1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    .local v2, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    move-object v1, v2

    .line 871
    .end local v2    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    .restart local v1    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    :goto_0
    return-object v1

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
