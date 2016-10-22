.class Lcom/flyme/deviceoriginalsettings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/PrivacySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/PrivacySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 148
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 149
    .local v0, "state":Z
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange backup data status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/PrivacySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v1, v4}, Lcom/flyme/deviceoriginalsettings/PrivacySettings;->access$000(Lcom/flyme/deviceoriginalsettings/PrivacySettings;Z)V

    .line 155
    :goto_0
    return v4

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/PrivacySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/PrivacySettings;->access$100(Lcom/flyme/deviceoriginalsettings/PrivacySettings;)V

    goto :goto_0
.end method
