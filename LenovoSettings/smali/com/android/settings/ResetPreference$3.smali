.class Lcom/flyme/deviceoriginalsettings/ResetPreference$3;
.super Ljava/lang/Object;
.source "ResetPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ResetPreference;->resetMenuOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ResetPreference;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ResetPreference;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ResetPreference$3;->this$0:Lcom/flyme/deviceoriginalsettings/ResetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ResetPreference$3;->this$0:Lcom/flyme/deviceoriginalsettings/ResetPreference;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ResetPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/DashboardSortUtil;->clearDashboardIndexPref()V

    .line 96
    return-void
.end method
