.class Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
.super Ljava/lang/Object;
.source "HotKnotActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/HotKnotActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotKnotActivityState"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field clientId:I

.field flags:I

.field hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

.field hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

.field onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

.field resumed:Z

.field final synthetic this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

.field token:Landroid/os/Binder;

.field uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

.field uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 97
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 98
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 99
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 100
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 102
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 103
    iput v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 105
    iput v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 108
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 115
    iput-object p2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    .line 116
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 117
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 118
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 119
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 123
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    .line 124
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 125
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 126
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 127
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 128
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 129
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    .local v3, "s":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 138
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 139
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    move v5, v7

    .line 134
    goto :goto_0

    :cond_1
    move v5, v7

    .line 135
    goto :goto_1

    :cond_2
    move v6, v7

    .line 136
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
