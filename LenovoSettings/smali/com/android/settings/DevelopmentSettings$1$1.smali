.class Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/DashboardSortUtil;->hideDevelopmentSettings()V

    .line 396
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 397
    return-void
.end method
