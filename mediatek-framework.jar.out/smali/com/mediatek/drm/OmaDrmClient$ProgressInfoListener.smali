.class Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/drm/OmaDrmClient;


# direct methods
.method private constructor <init>(Lcom/mediatek/drm/OmaDrmClient;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/drm/OmaDrmClient;Lcom/mediatek/drm/OmaDrmClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p2, "x1"    # Lcom/mediatek/drm/OmaDrmClient$1;

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 9
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmInfoEvent;

    .prologue
    .line 1157
    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result v6

    const/16 v7, 0x2711

    if-ne v6, v7, :cond_8

    .line 1158
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1159
    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, "message":Ljava/lang/String;
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hongen callback: message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # invokes: Lcom/mediatek/drm/OmaDrmClient;->parseEventMsg(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v6, v3}, Lcom/mediatek/drm/OmaDrmClient;->access$100(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1162
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "data_s"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1163
    .local v1, "dataSize":Ljava/lang/Long;
    const-string v6, "cnt_s"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1164
    .local v0, "cntSize":Ljava/lang/Long;
    const-string v6, "path"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1165
    .local v4, "path":Ljava/lang/String;
    const-string v6, "result"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1166
    .local v5, "result":Ljava/lang/String;
    const-string v6, "cta5_cancel_done"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1167
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_CANCEL_DONE:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    .line 1189
    .end local v0    # "cntSize":Ljava/lang/Long;
    .end local v1    # "dataSize":Ljava/lang/Long;
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1168
    .restart local v0    # "cntSize":Ljava/lang/Long;
    .restart local v1    # "dataSize":Ljava/lang/Long;
    .restart local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    const-string v6, "cta5_done"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1169
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_DONE:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1170
    :cond_2
    const-string v6, "cta5_error"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1171
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1172
    :cond_3
    const-string v6, "cta5_updating"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1173
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_UPDATING:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1174
    :cond_4
    const-string v6, "cta5_multimedia_encrypt_done"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1175
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_ENCRYPT_DONE:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1176
    :cond_5
    const-string v6, "cta5_multimedia_decrypt_done"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1177
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_DECRYPT_DONE:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1178
    :cond_6
    const-string v6, "cta5_error_key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1179
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_BADKEY:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto :goto_0

    .line 1181
    :cond_7
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    # getter for: Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    invoke-static {v6}, Lcom/mediatek/drm/OmaDrmClient;->access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    move-result-object v6

    sget v7, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_GENRIC:I

    invoke-interface {v6, v4, v0, v1, v7}, Lcom/mediatek/drm/OmaDrmClient$ProgressListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)I

    goto/16 :goto_0

    .line 1186
    .end local v0    # "cntSize":Ljava/lang/Long;
    .end local v1    # "dataSize":Ljava/lang/Long;
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_8
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type can not be known:type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
