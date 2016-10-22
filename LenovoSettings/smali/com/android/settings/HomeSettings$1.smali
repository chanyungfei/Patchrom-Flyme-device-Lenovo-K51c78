.class Lcom/flyme/deviceoriginalsettings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/HomeSettings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    .local v0, "index":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;

    .line 79
    .local v1, "pref":Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/HomeSettings;->makeCurrentHome(Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;)V

    .line 82
    :cond_0
    return-void
.end method
