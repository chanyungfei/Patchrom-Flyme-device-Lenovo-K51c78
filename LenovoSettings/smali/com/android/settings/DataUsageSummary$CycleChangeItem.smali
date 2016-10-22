.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;
.super Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleChangeItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1444
    const v0, 0x7f0c0b16

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;-><init>(Ljava/lang/CharSequence;)V

    .line 1445
    return-void
.end method
