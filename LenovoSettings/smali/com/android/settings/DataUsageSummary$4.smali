.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
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
    .line 703
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 709
    return-void
.end method
