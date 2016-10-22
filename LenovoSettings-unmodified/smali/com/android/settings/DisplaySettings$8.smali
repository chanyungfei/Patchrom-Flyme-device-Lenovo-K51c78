.class Lcom/android/settings/DisplaySettings$8;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    iput-object p2, p0, Lcom/android/settings/DisplaySettings$8;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$8;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1051
    return-void
.end method
