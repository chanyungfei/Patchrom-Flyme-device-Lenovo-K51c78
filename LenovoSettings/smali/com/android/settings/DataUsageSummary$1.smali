.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->highlightViewIfNeeded()V

    .line 450
    return-void
.end method
