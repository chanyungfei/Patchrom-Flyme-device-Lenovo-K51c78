.class Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->access$000(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Z)V

    .line 754
    return-void
.end method
