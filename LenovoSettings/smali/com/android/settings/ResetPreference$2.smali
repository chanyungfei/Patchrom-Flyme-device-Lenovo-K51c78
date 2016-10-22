.class Lcom/flyme/deviceoriginalsettings/ResetPreference$2;
.super Ljava/lang/Object;
.source "ResetPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ResetPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 74
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ResetPreference$2;->this$0:Lcom/flyme/deviceoriginalsettings/ResetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    const-string v0, "PrivacySettings"

    const-string v1, "click summary"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ResetPreference$2;->this$0:Lcom/flyme/deviceoriginalsettings/ResetPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/ResetPreference;->resetMenuOrder()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ResetPreference;->access$000(Lcom/flyme/deviceoriginalsettings/ResetPreference;)V

    .line 78
    return-void
.end method
