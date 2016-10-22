.class Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.security.action.permToApps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "permCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->startActivity(Landroid/content/Intent;)V

    .line 436
    const/4 v1, 0x1

    return v1
.end method
